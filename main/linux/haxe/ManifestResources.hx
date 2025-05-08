package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_credits_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_components_menubar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_components_playbar_head_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_components_playbar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_components_style_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_context_menus_default_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_context_menus_event_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_context_menus_hold_note_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_context_menus_note_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_context_menus_selection_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_context_test_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_about_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_character_icon_selector_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_edit_song_event_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_upload_chart_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_upload_vocals_entry_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_upload_vocals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_dialogs_welcome_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_toolboxes_difficulty_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_toolboxes_event_data_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_toolboxes_freeplay_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_toolboxes_metadata_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_toolboxes_note_data_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_chart_editor_toolboxes_offsets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_components_bottom_bar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_components_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_components_style_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_about_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_exit_confirm_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_find_object_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_load_url_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_new_object_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_user_guide_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_dialogs_welcome_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_toolboxes_character_properties_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_toolboxes_object_properties_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_exclude_data_ui_stage_editor_toolboxes_stage_settings_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_cursors_pointer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_indicator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_cursors_pointer_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css1 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flxanimate_images_indicator_png1 extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("/home/mikolka/haxelib/fnf-compiler/flixel/git/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/home/mikolka/haxelib/fnf-compiler/flixel/git/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("/home/mikolka/haxelib/fnf-compiler/flixel/git/assets/fonts/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("/home/mikolka/haxelib/fnf-compiler/flixel/git/assets/fonts/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel/git/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel/git/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/circle.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/diagonal_gradient.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/diamond.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/square.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/cursors/pointer.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_cursors_pointer_png extends lime.graphics.Image {}
@:keep @:file("/home/mikolka/haxelib/fnf-compiler/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/main.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css extends haxe.io.Bytes {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flxanimate/git/assets/images/pivot.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flxanimate/git/assets/images/indicator.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_indicator_png extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/circle.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_circle_png1 extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/diagonal_gradient.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diagonal_gradient_png1 extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/diamond.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_diamond_png1 extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flixel-addons/git/assets/images/transitions/square.png") @:noCompletion #if display private #end class __ASSET__flixel_images_transitions_square_png1 extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/cursors/pointer.png") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_cursors_pointer_png1 extends lime.graphics.Image {}
@:keep @:file("/home/mikolka/haxelib/fnf-compiler/haxeui-flixel/git/haxe/ui/backend/flixel/_module/styles/default/main.css") @:noCompletion #if display private #end class __ASSET__haxeui_flixel_styles_default_main_css1 extends haxe.io.Bytes {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flxanimate/git/assets/images/pivot.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_pivot_png1 extends lime.graphics.Image {}
@:keep @:image("/home/mikolka/haxelib/fnf-compiler/flxanimate/git/assets/images/indicator.png") @:noCompletion #if display private #end class __ASSET__flxanimate_images_indicator_png1 extends lime.graphics.Image {}



#else

@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end