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

package org.icefaces.samples.showcase.example.compat.chart;

import java.io.Serializable;

import javax.faces.bean.CustomScoped;
import javax.faces.bean.ManagedBean;

import com.icesoft.faces.component.outputchart.OutputChart;

import org.icefaces.samples.showcase.metadata.annotation.ComponentExample;
import org.icefaces.samples.showcase.metadata.annotation.ExampleResource;
import org.icefaces.samples.showcase.metadata.annotation.ExampleResources;
import org.icefaces.samples.showcase.metadata.annotation.ResourceType;
import org.icefaces.samples.showcase.metadata.context.ComponentExampleImpl;

@ComponentExample(
        parent = ChartBean.BEAN_NAME,
        title = "example.compat.chart.point.title",
        description = "example.compat.chart.point.description",
        example = "/resources/examples/compat/chart/chartPoint.xhtml"
)
@ExampleResources(
        resources ={
            // xhtml
            @ExampleResource(type = ResourceType.xhtml,
                    title="chartPoint.xhtml",
                    resource = "/resources/examples/compat/"+
                               "chart/chartPoint.xhtml"),
            // Java Source
            @ExampleResource(type = ResourceType.java,
                    title="ChartPoint.java",
                    resource = "/WEB-INF/classes/org/icefaces/samples/"+
                               "showcase/example/compat/chart/ChartPoint.java")
        }
)
@ManagedBean(name= ChartPoint.BEAN_NAME)
@CustomScoped(value = "#{window}")
public class ChartPoint extends ComponentExampleImpl<ChartPoint> implements Serializable {
	
	public static final String BEAN_NAME = "chartPoint";
	
	private ChartModelAxial model = new ChartModelAxial("Point", true, false, true, true);
	
	public ChartPoint() {
		super(ChartPoint.class);
	}
	
	public String getType() { return OutputChart.POINT_CHART_TYPE; }
	public ChartModelAxial getModel() { return model; }
	
	public void setModel(ChartModelAxial model) { this.model = model; }	
}
