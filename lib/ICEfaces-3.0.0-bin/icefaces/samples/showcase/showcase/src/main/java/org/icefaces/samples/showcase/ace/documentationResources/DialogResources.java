/*
 * Copyright 2004-2012 ICEsoft Technologies Canada Corp.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the
 * License. You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an "AS
 * IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */

package org.icefaces.samples.showcase.ace.documentationResources;

import org.icefaces.samples.showcase.metadata.annotation.*;
import org.icefaces.samples.showcase.metadata.context.ComponentExampleImpl;

import javax.faces.bean.CustomScoped;
import javax.faces.bean.ManagedBean;
import java.io.Serializable;
import org.icefaces.samples.showcase.metadata.context.ResourceRootPath;

@ExampleResources(
        resources ={
                
                // WIKI Resources
                @ExampleResource(type = ResourceType.wiki,
                    title="ace:dialog",
                    resource = ResourceRootPath.FOR_WIKI + "Dialog"),

                // TLD Resources
                @ExampleResource(type = ResourceType.tld,
                    title="ace:dialog",
                    resource = ResourceRootPath.FOR_ACE_TLD + "dialog.html")
                
        }
)
@ManagedBean(name= DialogResources.BEAN_NAME)
@CustomScoped(value = "#{window}")
public class DialogResources extends ComponentExampleImpl<DialogResources> implements Serializable {
    public static final String BEAN_NAME = "dialogResources";
    public DialogResources()
    {
        super(DialogResources.class);
    }
}
