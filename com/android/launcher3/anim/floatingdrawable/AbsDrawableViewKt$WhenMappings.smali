.class public final synthetic Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->values()[Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_LEFT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;->SCROLL_RIGHT:Lcom/android/launcher3/anim/floatingdrawable/ScrollDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/android/launcher3/anim/floatingdrawable/AbsDrawableViewKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
