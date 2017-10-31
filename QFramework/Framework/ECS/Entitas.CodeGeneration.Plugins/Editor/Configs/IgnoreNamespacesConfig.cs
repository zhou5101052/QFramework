using System.Collections.Generic;
using Entitas.Utils;

namespace Entitas.CodeGeneration.Plugins {

    public class IgnoreNamespacesConfig : AbstractConfigurableConfig {

        const string IGNORE_NAMESPACES_KEY = "Entitas.CodeGeneration.Plugins.IgnoreNamespaces";

        public override Dictionary<string, string> DefaultProperties {
            get {
                return new Dictionary<string, string> {
                    { IGNORE_NAMESPACES_KEY, "false" }
                };
            }
        }

        public bool ignoreNamespaces {
            get { return Properties[IGNORE_NAMESPACES_KEY] == "true" ; }
        }
    }
}