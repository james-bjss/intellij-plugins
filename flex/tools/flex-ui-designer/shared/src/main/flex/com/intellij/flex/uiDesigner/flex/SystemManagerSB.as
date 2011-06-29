package com.intellij.flex.uiDesigner.flex {
import com.intellij.flex.uiDesigner.ResourceBundleProvider;
import com.intellij.flex.uiDesigner.UiErrorHandler;

import flash.display.DisplayObject;
import flash.display.Stage;
import flash.geom.Rectangle;

public interface SystemManagerSB {
  function setUserDocument(object:DisplayObject):void;

  function get explicitDocumentSize():Rectangle;
  function setActualDocumentSize(w:Number, h:Number):void;
  
  function getDefinitionByName(name:String):Object;

  function addRealEventListener(type:String, listener:Function, useCapture:Boolean = false):void;
  function removeRealEventListener(type:String, listener:Function):void;

  function get stage():Stage;

  function init(moduleFactory:Object, stage:Stage, uiErrorHandler:UiErrorHandler, resourceBundleProvider:ResourceBundleProvider,
                mainFocusManager:MainFocusManagerSB):void;

  function removeEventHandlers():void;

  function added():void;

  function deactivated():void;

  function activated():void;
}
}
