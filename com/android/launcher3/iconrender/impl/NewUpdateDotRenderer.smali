.class public Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;
.super Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;
    }
.end annotation


# static fields
.field public static final PRIORITY:I = 0xa

.field private static final TAG:Ljava/lang/String; = "NewUpdateDotRenderer"

.field private static sNewUpdateDotDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/AbstractTitlePrefixRenderer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getUpdateDotDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4

    sget-object v0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;->sNewUpdateDotDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;->sNewUpdateDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;->sNewUpdateDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070bc9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070bc6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2a
    sget-object p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;->sNewUpdateDotDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/android/launcher3/iconrender/RenderManager;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/iconrender/TitleRenderParams;)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public createPrefixDrawable(Landroid/content/Context;Lcom/android/launcher3/iconrender/TitleRenderParams;)Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public fitTextSize()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public priority()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method
