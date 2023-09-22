namespace CommonLib.Database
{
    public class SqlParameter
    {
        private readonly string _parameterName;
        private readonly object _value;

        public SqlParameter(string parameterName, object value)
        {
            _parameterName = parameterName;
            _value = value;
        }

        public string ParameterName => _parameterName;
        public object Value => _value;
    }
}