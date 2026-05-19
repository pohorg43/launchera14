.class public final Lcom/android/common/util/DisplayKey;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/DisplayKey$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/DisplayKey$Companion;


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private densityDpi:I

.field private foldingMode:I

.field private fontScale:F

.field private navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field private rotation:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/DisplayKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/DisplayKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/DisplayKey;->Companion:Lcom/android/common/util/DisplayKey$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final from(Landroid/content/Context;)Lcom/android/common/util/DisplayKey;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/DisplayKey;->Companion:Lcom/android/common/util/DisplayKey$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/DisplayKey$Companion;->from(Landroid/content/Context;)Lcom/android/common/util/DisplayKey;

    move-result-object p0

    return-object p0
.end method

.method public static final from(Landroid/content/res/Configuration;)Lcom/android/common/util/DisplayKey;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/DisplayKey;->Companion:Lcom/android/common/util/DisplayKey$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/DisplayKey$Companion;->from(Landroid/content/res/Configuration;)Lcom/android/common/util/DisplayKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lcom/android/common/util/DisplayKey;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.common.util.DisplayKey"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/common/util/DisplayKey;

    iget v1, p0, Lcom/android/common/util/DisplayKey;->foldingMode:I

    iget v3, p1, Lcom/android/common/util/DisplayKey;->foldingMode:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Lcom/android/common/util/DisplayKey;->densityDpi:I

    iget v3, p1, Lcom/android/common/util/DisplayKey;->densityDpi:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget v1, p0, Lcom/android/common/util/DisplayKey;->rotation:I

    iget v3, p1, Lcom/android/common/util/DisplayKey;->rotation:I

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget v1, p0, Lcom/android/common/util/DisplayKey;->fontScale:F

    iget v3, p1, Lcom/android/common/util/DisplayKey;->fontScale:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3d

    move v1, v0

    goto :goto_3e

    :cond_3d
    move v1, v2

    :goto_3e
    if-nez v1, :cond_41

    return v2

    :cond_41
    iget-object v1, p0, Lcom/android/common/util/DisplayKey;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v3, p1, Lcom/android/common/util/DisplayKey;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v1, v3, :cond_48

    return v2

    :cond_48
    iget-object p0, p0, Lcom/android/common/util/DisplayKey;->bounds:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/common/util/DisplayKey;->bounds:Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    return v2

    :cond_53
    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/DisplayKey;->bounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getDensityDpi()I
    .registers 1

    iget p0, p0, Lcom/android/common/util/DisplayKey;->densityDpi:I

    return p0
.end method

.method public final getFoldingMode()I
    .registers 1

    iget p0, p0, Lcom/android/common/util/DisplayKey;->foldingMode:I

    return p0
.end method

.method public final getFontScale()F
    .registers 1

    iget p0, p0, Lcom/android/common/util/DisplayKey;->fontScale:F

    return p0
.end method

.method public final getNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/DisplayKey;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-object p0
.end method

.method public final getRotation()I
    .registers 1

    iget p0, p0, Lcom/android/common/util/DisplayKey;->rotation:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/android/common/util/DisplayKey;->foldingMode:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/common/util/DisplayKey;->densityDpi:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/common/util/DisplayKey;->rotation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/common/util/DisplayKey;->fontScale:F

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/d;->a(FII)I

    move-result v0

    iget-object v1, p0, Lcom/android/common/util/DisplayKey;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/common/util/DisplayKey;->bounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    :cond_2c
    add-int/2addr v0, v2

    return v0
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/DisplayKey;->bounds:Landroid/graphics/Rect;

    return-void
.end method

.method public final setDensityDpi(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/DisplayKey;->densityDpi:I

    return-void
.end method

.method public final setFoldingMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/DisplayKey;->foldingMode:I

    return-void
.end method

.method public final setFontScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/DisplayKey;->fontScale:F

    return-void
.end method

.method public final setNavigationMode(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/DisplayKey;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-void
.end method

.method public final setRotation(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/DisplayKey;->rotation:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DisplayKey(foldingMode="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/util/DisplayKey;->foldingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/common/util/DisplayKey;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/common/util/DisplayKey;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/common/util/DisplayKey;->fontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", navigationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/common/util/DisplayKey;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/common/util/DisplayKey;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
