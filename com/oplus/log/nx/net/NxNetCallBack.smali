.class public Lcom/oplus/log/nx/net/NxNetCallBack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/nx/net/INxNetCallBack;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
