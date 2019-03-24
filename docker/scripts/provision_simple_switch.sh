echo "
port_add eth1 1
table_add egress_0.port_settings.port_settings egress_0.port_settings.save_port_settings 1 => 1500 0x1 0x2
table_add ingress.ipv6_next_hop_group.ipv6_prefix_to_next_hop_group ingress.ipv6_next_hop_group.set_next_hop_group fd01::/16 => 100
table_add ingress.ipv6_next_hop.next_hop_group_to_port ingress.ipv6_next_hop.set_egress_port 100 => 1" | simple_switch_CLI
