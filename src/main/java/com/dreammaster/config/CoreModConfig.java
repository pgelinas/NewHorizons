package com.dreammaster.config;

import java.io.File;

import eu.usrv.yamcore.config.ConfigManager;

public class CoreModConfig extends ConfigManager
{
	public CoreModConfig(File pConfigBaseDirectory,
			String pModCollectionDirectory, String pModID) {
		super(pConfigBaseDirectory, pModCollectionDirectory, pModID);

	}

	public boolean ModHazardousItems_Enabled;
	public boolean ModCustomToolTips_Enabled;
	public int PotionTimer;
	
	@Override
	protected void PreInit() {
		ModHazardousItems_Enabled = false;
		ModCustomToolTips_Enabled = false;
		PotionTimer = 100;
	}

	@Override
	protected void Init() {
		ModHazardousItems_Enabled = _mainConfig.getBoolean("HazardousItems", "Modules", ModHazardousItems_Enabled, "Set to true to enable HazardousItems module. This needs a separate config file which is created once you start with this setting enabled");
		ModCustomToolTips_Enabled = _mainConfig.getBoolean("CustomToolTips", "Modules", ModCustomToolTips_Enabled, "Set to true to enable CustomToolTips module. This needs a separate config file which is created once you start with this setting enabled");
		PotionTimer = _mainConfig.getInt("PotionTimer", "Limits", PotionTimer, 100, 2048, "The time (in ticks) the potion effect will remain on the player when he drops the bucket. 20 = 1 second");
	}

	@Override
	protected void PostInit() {
		
	}
}