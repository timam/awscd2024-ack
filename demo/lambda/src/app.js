exports.handler = async (event) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify('Hello from AWS Community Day 2024!')
    };
    return response;
};
