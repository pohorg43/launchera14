.class public final Lpantanal/app/Gadget$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getView(Lpantanal/app/Gadget;)Landroid/view/View;
    .registers 1

    invoke-static {p0}, Lpantanal/app/IPantanalService$DefaultImpls;->getView(Lpantanal/app/IPantanalService;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static setUIDataInterceptor(Lpantanal/app/Gadget;Lpantanal/app/UIDataInterceptor;)V
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lpantanal/app/IPantanalService$DefaultImpls;->setUIDataInterceptor(Lpantanal/app/IPantanalService;Lpantanal/app/UIDataInterceptor;)V

    return-void
.end method
