.class public final Lcom/oplus/utrace/hlog/HLogUtils$buildLogger$idProvider$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/Settings$IOpenIdProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/hlog/HLogUtils;->buildLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/log/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $ouid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/hlog/HLogUtils$buildLogger$idProvider$1;->$ouid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuid()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getGuid()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public getOuid()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUtils$buildLogger$idProvider$1;->$ouid:Ljava/lang/String;

    return-object p0
.end method
