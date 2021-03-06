package k8s

k8s: configmaps: "etc-clickhouse-operator-usersd-files": {
	metadata: labels: app: "clickhouse-operator"
	data: {
		"01-clickhouse-user.xml": """
		<yandex>
		    <users>
		        <clickhouse_operator>
		            <networks>
		                <ip>127.0.0.1</ip>
		                <ip>0.0.0.0/0</ip>
		                <ip>::/0</ip>
		            </networks>
		            <password_sha256_hex>716b36073a90c6fe1d445ac1af85f4777c5b7a155cea359961826a030513e448</password_sha256_hex>
		            <profile>clickhouse_operator</profile>
		            <quota>default</quota>
		        </clickhouse_operator>
		    </users>
		    <profiles>
		        <clickhouse_operator>
		            <log_queries>0</log_queries>
		        </clickhouse_operator>
		    </profiles>
		</yandex>

		"""

		"02-clickhouse-default-profile.xml": """
		<yandex>
		  <profiles>
		    <default>
		      <log_queries>1</log_queries>
		      <connect_timeout_with_failover_ms>1000</connect_timeout_with_failover_ms>
		      <optimize_move_to_prewhere>0</optimize_move_to_prewhere>
		      <distributed_aggregation_memory_efficient>1</distributed_aggregation_memory_efficient>
		      <parallel_view_processing>1</parallel_view_processing>
		      <http_connection_timeout>5</http_connection_timeout>
		    </default>
		  </profiles>
		</yandex>

		"""
	}
}
