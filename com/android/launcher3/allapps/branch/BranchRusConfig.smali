.class public final Lcom/android/launcher3/allapps/branch/BranchRusConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchRusConfig$Companion;
    }
.end annotation


# static fields
.field private static final AD_POSITION_1:I = 0x1

.field private static final AD_POSITION_3:I = 0x3

.field private static final AD_POSITION_4:I = 0x4

.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchRusConfig$Companion;

.field private static final DEFAULT_SUGGESTED_APP_AD_COUNT:I = 0x2

.field private static final DEFAULT_SUGGESTED_LINK_AD_COUNT:I = 0x1

.field public static final TAG_BUBBLE_ENABLED:Ljava/lang/String; = "tag_bubble_enabled"

.field public static final TAG_DEVICE_PROTECT_DELAY_TIME:Ljava/lang/String; = "tag_device_protect_delay_time"

.field public static final TAG_RED_DOT_ENABLED:Ljava/lang/String; = "red_dot_enabled"

.field public static final TAG_SEARCH_NOTIFICATION_ENABLED:Ljava/lang/String; = "search_notification_enabled"

.field public static final TAG_SUGGESTED_APP_AD_COUNT:Ljava/lang/String; = "suggested_app_ad_count"

.field public static final TAG_SUGGESTED_APP_AD_POSITION:Ljava/lang/String; = "suggested_app_ad_position"

.field public static final TAG_SUGGESTED_LINK_AD_COUNT:Ljava/lang/String; = "suggested_link_ad_count"

.field public static final TAG_SUGGESTED_LINK_AD_POSITION_2:Ljava/lang/String; = "suggested_link_ad_position_2"

.field public static final TAG_SUGGESTED_LINK_AD_POSITION_4:Ljava/lang/String; = "suggested_link_ad_position_4"


# instance fields
.field private mAppAdCount:I

.field private mAppPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleEnable:Z

.field private mDeviceProtectDelayTime:J

.field private mLinkAdCount:I

.field private mLinkPosition2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkPosition4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRedDotEnable:Z

.field private mSearchNotificationEnable:Z

.field private value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchRusConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchRusConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->Companion:Lcom/android/launcher3/allapps/branch/BranchRusConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppAdCount:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkAdCount:I

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppPosition:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition2:Ljava/util/List;

    invoke-static {v2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition4:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->value:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mSearchNotificationEnable:Z

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mRedDotEnable:Z

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mBubbleEnable:Z

    return-void
.end method


# virtual methods
.method public final getMAppAdCount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppAdCount:I

    return p0
.end method

.method public final getMAppPosition()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppPosition:Ljava/util/List;

    return-object p0
.end method

.method public final getMBubbleEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mBubbleEnable:Z

    return p0
.end method

.method public final getMDeviceProtectDelayTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mDeviceProtectDelayTime:J

    return-wide v0
.end method

.method public final getMLinkAdCount()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkAdCount:I

    return p0
.end method

.method public final getMLinkPosition2()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition2:Ljava/util/List;

    return-object p0
.end method

.method public final getMLinkPosition4()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition4:Ljava/util/List;

    return-object p0
.end method

.method public final getMRedDotEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mRedDotEnable:Z

    return p0
.end method

.method public final getMSearchNotificationEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mSearchNotificationEnable:Z

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final setMAppAdCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppAdCount:I

    return-void
.end method

.method public final setMAppPosition(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppPosition:Ljava/util/List;

    return-void
.end method

.method public final setMBubbleEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mBubbleEnable:Z

    return-void
.end method

.method public final setMDeviceProtectDelayTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mDeviceProtectDelayTime:J

    return-void
.end method

.method public final setMLinkAdCount(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkAdCount:I

    return-void
.end method

.method public final setMLinkPosition2(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition2:Ljava/util/List;

    return-void
.end method

.method public final setMLinkPosition4(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition4:Ljava/util/List;

    return-void
.end method

.method public final setMRedDotEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mRedDotEnable:Z

    return-void
.end method

.method public final setMSearchNotificationEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mSearchNotificationEnable:Z

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "BranchRusConfig(mAppAdCount="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppAdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLinkAdCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkAdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAppPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mAppPosition:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLinkPosition2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition2:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLinkPosition4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mLinkPosition4:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mSearchNotificationEnable=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mSearchNotificationEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\', mRedDotEnable=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mRedDotEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\', mBubbleEnable=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mBubbleEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\', mDeviceProtectDelayTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/allapps/branch/BranchRusConfig;->mDeviceProtectDelayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
