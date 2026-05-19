.class public final Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBundleUpdateComplete(Z)V
    .registers 3

    const-string/jumbo p0, "onBundleUpdateComplete success = "

    const-string v0, "BranchInitImpl"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onBundleUpdateInit()V
    .registers 2

    const-string p0, "BranchInitImpl"

    const-string/jumbo v0, "onBundleUpdateInit"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
