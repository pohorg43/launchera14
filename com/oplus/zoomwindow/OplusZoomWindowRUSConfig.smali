.class public Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCornerRadius:F

.field private mCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedRelaunchCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedShowToastPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotShowToastPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlySupportPkgListSwitch:Z

.field private mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

.field private mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

.field private mPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowToastSwitch:Z

.field private mSupportStartZoomOnNewTaskSwitch:Z

.field private mUnRelaunchCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnReusedCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSupportCallerPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSupportCpnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnSupportPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnusedZoomDisplayInfoPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I

.field private mVersionLimitPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionLimitReplyPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomWindowSwitch:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig$1;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    new-instance v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-direct {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_83

    move v0, v1

    goto :goto_84

    :cond_83
    move v0, v2

    :goto_84
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v1

    goto :goto_8f

    :cond_8e
    move v0, v2

    :goto_8f
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_99

    move v0, v1

    goto :goto_9a

    :cond_99
    move v0, v2

    :goto_9a
    iput-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a3

    goto :goto_a4

    :cond_a3
    move v1, v2

    :goto_a4
    iput-boolean v1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    const-class v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    const-class v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    const-class v1, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    const-class v1, Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    return p0
.end method

.method public getCpnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    return-object p0
.end method

.method public getForcedRelaunchCpnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    return-object p0
.end method

.method public getForcedShowToastPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getNotShowToastPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getOnlySupportPkgListSwitch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    return p0
.end method

.method public getOplusZoomWindowRegion()Lcom/oplus/zoomwindow/OplusZoomWindowRegion;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    return-object p0
.end method

.method public getOplusZoomWindowSize()Lcom/oplus/zoomwindow/OplusZoomWindowSize;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    return-object p0
.end method

.method public getPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getReplyPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getShowToastSwitch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    return p0
.end method

.method public getUnRelaunchCpnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    return-object p0
.end method

.method public getUnReusedCpnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    return-object p0
.end method

.method public getUnSupportCallerPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getUnSupportCpnList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    return-object p0
.end method

.method public getUnSupportPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getUnusedZoomDisplayInfoPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getVersion()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    return p0
.end method

.method public getVersionLimitPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getVersionLimitReplyPkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    return-object p0
.end method

.method public getZoomWindowSwitch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    return p0
.end method

.method public isSupportStartZoomOnNewTaskSwitch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    return p0
.end method

.method public setCornerRadius(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    return-void
.end method

.method public setCpnList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    return-void
.end method

.method public setForcedRelaunchCpnList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    return-void
.end method

.method public setForcedShowToastPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    return-void
.end method

.method public setNotShowToastPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    return-void
.end method

.method public setOnlySupportPkgListSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    return-void
.end method

.method public setOplusZoomWindowRegion(Lcom/oplus/zoomwindow/OplusZoomWindowRegion;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    return-void
.end method

.method public setOplusZoomWindowSize(Lcom/oplus/zoomwindow/OplusZoomWindowSize;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    return-void
.end method

.method public setPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    return-void
.end method

.method public setReplyPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    return-void
.end method

.method public setShowToastSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    return-void
.end method

.method public setSupportStartZoomOnNewTaskSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    return-void
.end method

.method public setUnRelaunchCpnList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    return-void
.end method

.method public setUnReusedCpnList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    return-void
.end method

.method public setUnSupportCallerPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    return-void
.end method

.method public setUnSupportCpnList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    return-void
.end method

.method public setUnSupportPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    return-void
.end method

.method public setUnusedZoomDisplayInfoPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    return-void
.end method

.method public setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    return-void
.end method

.method public setVersionLimitPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    return-void
.end method

.method public setVersionLimitReplyPkgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/zoomwindow/OplusZoomWindowSupportAppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    return-void
.end method

.method public setZoomWindowSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "OplusZoomWindowRUSConfig{"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "version = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nZoomWindowSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nShowToastSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nOnlySupportPkgListSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nReplyPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnSupportPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmSupportStartZoomOnNewTaskSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnSupportCallerPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nForcedShowToastPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nNotShowToastPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnusedZoomDisplayInfoPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnSupportCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnReusedCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nUnRelaunchCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nForcedRelaunchCpnList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCornerRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nZoom Window size =  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-virtual {v2}, Lcom/oplus/zoomwindow/OplusZoomWindowSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nRegion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-virtual {v2}, Lcom/oplus/zoomwindow/OplusZoomWindowRegion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVersionLimitPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nVersionLimitReplyPkgList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mZoomWindowSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mShowToastSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOnlySupportPkgListSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mSupportStartZoomOnNewTaskSwitch:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mReplyPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCallerPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedShowToastPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mNotShowToastPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnusedZoomDisplayInfoPkgList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnSupportCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnReusedCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mUnRelaunchCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mForcedRelaunchCpnList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mCornerRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowSize:Lcom/oplus/zoomwindow/OplusZoomWindowSize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mOplusZoomWindowRegion:Lcom/oplus/zoomwindow/OplusZoomWindowRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitPkgList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object p0, p0, Lcom/oplus/zoomwindow/OplusZoomWindowRUSConfig;->mVersionLimitReplyPkgList:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
