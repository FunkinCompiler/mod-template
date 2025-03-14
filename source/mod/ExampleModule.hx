package mod;

import haxe.Log;
import funkin.modding.module.ScriptedModule;
import funkin.play.event.ScriptedSongEvent;
import funkin.play.cutscene.dialogue.ScriptedConversation;
import funkin.play.character.ScriptedCharacter.ScriptedAnimateAtlasCharacter;
import flixel.FlxG;
import funkin.modding.base.ScriptedMusicBeatSubState;
import funkin.modding.events.ScriptEvent.UpdateScriptEvent;
import funkin.modding.module.ModuleHandler;
import funkin.ui.options.PreferencesMenu;
import funkin.ui.options.OptionsState;
import funkin.modding.events.ScriptEvent.StateChangeScriptEvent;
import funkin.modding.module.Module;

/**
 * This is example module showing how to manipulate game's states
 */
class ExampleModule extends Module // ScriptedModule
{
  public function new()
  {
    super("test module", 1000);
  }

  override function onStateChangeEnd(ev:StateChangeScriptEvent)
  {
    //* Typical way to check if we're in a desired state
    if (Std.isOfType(ev.targetState, OptionsState))
    {
      //* We know a state's type here
      var setState = cast(ev.targetState, OptionsState);
      //* so we can cast to it here
      var prefs = cast(setState.pages.get("preferences"), PreferencesMenu);
      // Inject options to the options menu
      prefs.createPrefItemCheckbox("test option", "", (v) -> {
        // Obtaining "remote" module in ./misc/RemoteModule.hx
        var funnyModule = cast(ModuleHandler.getModule("remote"), ScriptedModule); 
        // calling custom function from "remote"
        funnyModule.scriptCall("remoteCall", ["classic"]);
        //* As you can see it's displayed as a 'missing field'
        
        //* but with `mockPolymodCalls` enabled you can do this
        funnyModule.polymodExecFunc("remoteCall", ["new and improved"]);
        funnyModule.polymodExecFunc("remoteMulCall", ["new and improved", 999]);
      }, false);
    }
    super.onStateChangeEnd(ev);
    
  }

  //* this method runs on every update in EVERY STATE
  override function onUpdate(event:UpdateScriptEvent)
  {
    super.onUpdate(event);
  }
}
