.class public final Lpantanal/app/IPantanalService$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/IPantanalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getView(Lpantanal/app/IPantanalService;)Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setUIDataInterceptor(Lpantanal/app/IPantanalService;Lpantanal/app/UIDataInterceptor;)V
    .registers 2

    const-string p0, "cb"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
