.class public final Lcom/android/launcher3/folder/big/stacked/StackedDotInfo;
.super Lcom/android/launcher3/dot/OplusFolderDotInfo;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/dot/OplusFolderDotInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowDot()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/dot/OplusFolderDotInfo;->hasDot()Z

    move-result p0

    return p0
.end method
