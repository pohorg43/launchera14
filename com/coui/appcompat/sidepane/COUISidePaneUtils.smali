.class public Lcom/coui/appcompat/sidepane/COUISidePaneUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Landroid/app/Activity;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x258

    if-lt v0, v3, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x1e0

    if-ge v0, v3, :cond_2b

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_26

    move p0, v1

    goto :goto_27

    :cond_26
    move p0, v2

    :goto_27
    if-eqz p0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :cond_2b
    :goto_2b
    return v1
.end method
