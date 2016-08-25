mainclk_div_inst : mainclk_div PORT MAP (
		inclk0	 => inclk0_sig,
		pllena	 => pllena_sig,
		areset	 => areset_sig,
		c0	 => c0_sig,
		locked	 => locked_sig
	);
