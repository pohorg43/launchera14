.class public Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_DEVICE_FOLDING:Ljava/lang/String; = "FSS_deviceFolding"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldingSwitchStateChanged(Landroid/os/Bundle;)V
    .registers 2

    const-string p0, "FSS_OplusFoldSwitchStateObserver"

    const-string p1, "onFoldingSwitchStateChanged: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
