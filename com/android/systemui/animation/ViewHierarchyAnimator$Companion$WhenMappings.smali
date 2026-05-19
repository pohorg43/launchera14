.class public final synthetic Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;
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

    invoke-static {}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->values()[Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->CENTER:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->BOTTOM_LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP_LEFT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2b
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_34} :catch_34

    :catch_34
    :try_start_34
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->BOTTOM:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP_RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_46

    :catch_46
    :try_start_46
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_50

    :catch_50
    :try_start_50
    sget-object v1, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->BOTTOM_RIGHT:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_5a

    :catch_5a
    sput-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
