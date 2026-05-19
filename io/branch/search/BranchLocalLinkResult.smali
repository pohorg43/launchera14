.class public Lio/branch/search/BranchLocalLinkResult;
.super Lio/branch/search/BranchBaseLinkResult;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/BranchLocalLinkResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchLocalLinkResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchLocalLinkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1  # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lio/branch/search/BranchBaseLinkResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lio/branch/search/BranchLocalLinkResult$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/BranchLocalLinkResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/l;Ljava/lang/String;)V
    .registers 20
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8  # Lio/branch/search/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lio/branch/search/BranchBaseLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getParentAppResult()Lio/branch/search/BranchLocalAppResult;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getParent()Lio/branch/search/BranchBaseAppResult;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchLocalAppResult;

    return-object p0
.end method

.method public loadImageDrawable(Lio/branch/search/BranchDrawableCallback;)V
    .registers 2
    .param p1  # Lio/branch/search/BranchDrawableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchDrawableCallback<",
            "Lio/branch/search/BranchLocalLinkResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/BranchBaseLinkResult;->loadImageDrawableInternal(Lio/branch/search/BranchDrawableCallback;)V

    return-void
.end method
