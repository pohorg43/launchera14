.class public final Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams;
.super Lcom/android/launcher3/anim/light/animparams/FolderAnimParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams$Companion;

.field private static final DELAY_LIGHT_FOLDER_ICON_CLOSE_ALPHA:J = 0x0L

.field private static final DURATION_LIGHT_FOLDER_CONTENT_CLOSE_ALPHA:J = 0xfaL

.field private static final DURATION_LIGHT_FOLDER_CONTENT_CLOSE_TRANS_SCALE:J = 0x1b1L

.field private static final DURATION_LIGHT_FOLDER_CONTENT_OPEN_ALPHA:J = 0x12cL

.field private static final DURATION_LIGHT_FOLDER_CONTENT_OPEN_SCALE_TRANS:J = 0x1b1L

.field private static final DURATION_LIGHT_FOLDER_ICON_CLOSE_ALPHA:J = 0x1b1L

.field private static final DURATION_LIGHT_FOLDER_ICON_CLOSE_SCALE_TRANS:J = 0x1b1L

.field private static final DURATION_LIGHT_FOLDER_ICON_OPEN_ALPHA:J = 0x64L

.field private static final DURATION_LIGHT_FOLDER_ICON_OPEN_SCALE:J = 0x1b1L

.field private static final MAX_FOLDER_ICON_SCALE_LIGHT_ANIM:F = 3.0f

.field private static final MIN_FOLDER_CONTENT_SCALE_LIGHT_ANIM:F = 0.2f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams;->Companion:Lcom/android/launcher3/anim/light/animparams/LightFolderAnimParams$Companion;

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

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public getFolderContentCloseScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getFolderContentCloseTransDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getFolderContentOpenAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public getFolderContentOpenScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getFolderContentOpenTransDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getFolderIconCloseAlphaDelay()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFolderIconCloseAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getFolderIconCloseScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getFolderIconOpenAlphaDuration()J
    .registers 3

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getFolderIconOpenScaleDuration()J
    .registers 3

    const-wide/16 v0, 0x1b1

    return-wide v0
.end method

.method public getMaxFolderIconScale()F
    .registers 1

    const/high16 p0, 0x40400000  # 3.0f

    return p0
.end method

.method public getMinFolderContentScale()F
    .registers 1

    const p0, 0x3e4ccccd  # 0.2f

    return p0
.end method
