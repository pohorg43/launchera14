.class public final Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams;
.super Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams$Companion;

.field public static final DURATION_200:J = 0xc8L

.field public static final DURATION_300:J = 0x12cL

.field public static final DURATION_SUPER_LIGHT_FOLDER_CLOSE:J = 0x168L

.field public static final DURATION_SUPER_LIGHT_FOLDER_OPEN:J = 0x168L

.field public static final MIN_FOLDER_CONTENT_SCALE_SUPER_LIGHT_ANIM:F = 0.9f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams;->Companion:Lcom/android/launcher3/anim/light/animparams/SuperLightFolderAnimParams$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getFolderContentCloseAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public getFolderContentCloseScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x168

    return-wide v0
.end method

.method public getFolderContentOpenAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x168

    return-wide v0
.end method

.method public getFolderContentOpenScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x168

    return-wide v0
.end method

.method public getMinFolderContentScale()F
    .registers 1

    const p0, 0x3f666666  # 0.9f

    return p0
.end method
