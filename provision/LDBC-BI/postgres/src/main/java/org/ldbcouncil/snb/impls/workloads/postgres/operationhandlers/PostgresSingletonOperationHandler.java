package org.ldbcouncil.snb.impls.workloads.postgres.operationhandlers;

import org.ldbcouncil.snb.driver.DbException;
import org.ldbcouncil.snb.driver.Operation;
import org.ldbcouncil.snb.driver.ResultReporter;
import org.ldbcouncil.snb.impls.workloads.operationhandlers.SingletonOperationHandler;
import org.ldbcouncil.snb.impls.workloads.postgres.PostgresDbConnectionState;

import java.sql.*;

public abstract class PostgresSingletonOperationHandler<TOperation extends Operation<TOperationResult>, TOperationResult>
        extends PostgresOperationHandler
        implements SingletonOperationHandler<TOperationResult, TOperation, PostgresDbConnectionState> {

    @Override
    public void executeOperation(TOperation operation, PostgresDbConnectionState state,
                                 ResultReporter resultReporter) throws DbException {
        Connection conn = state.getConnection();
        TOperationResult tuple = null;
        int resultCount = 0;

        String queryString = getQueryString(state, operation);
        replaceParameterNamesWithQuestionMarks(operation, queryString);

        try {
            final PreparedStatement stmt = prepareAndSetParametersInPreparedStatement(operation, queryString, conn);
            state.logQuery(operation.getClass().getSimpleName(), queryString);

            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                resultCount++;

                tuple = convertSingleResult(result);
                if (state.isPrintResults()) {
                    System.out.println(tuple.toString());
                }
            }
        } catch (Exception e) {
            throw new DbException(e);
        }
        resultReporter.report(resultCount, tuple, operation);
    }

    public abstract TOperationResult convertSingleResult(ResultSet result) throws SQLException;
}
