.class public Lcom/coui/appcompat/unitconversionutil/COUIUnitConversionUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x3

    const-string v1, "COUIUnitConversionUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :cond_a
    return-void
.end method
