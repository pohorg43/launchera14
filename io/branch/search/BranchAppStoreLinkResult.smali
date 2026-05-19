.class public final Lio/branch/search/BranchAppStoreLinkResult;
.super Lio/branch/search/BranchBaseLinkResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAppStoreLinkResult$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u001a\u0018\u0000 +2\u00020\u0001:\u0001,B\u0097\u0001\u0012\u0006\u0010\u001b\u001a\u00020\u0013\u0012\u0006\u0010\u001c\u001a\u00020\u0013\u0012\u0006\u0010\u001d\u001a\u00020\u0004\u0012\u0006\u0010\u001e\u001a\u00020\u0013\u0012\u0006\u0010\u001f\u001a\u00020\u0013\u0012\u0006\u0010 \u001a\u00020\u0013\u0012\u0006\u0010!\u001a\u00020\u0013\u0012\u0006\u0010\"\u001a\u00020\u0013\u0012\u0006\u0010#\u001a\u00020\u0013\u0012\u0006\u0010$\u001a\u00020\u0013\u0012\u0006\u0010%\u001a\u00020\u0013\u0012\u0006\u0010&\u001a\u00020\u0013\u0012\u0006\u0010\'\u001a\u00020\u0013\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0018\u001a\u00020\u0013\u0012\u0006\u0010\u001a\u001a\u00020\u0013¢\u0006\u0004\b(\u0010)B\u0011\b\u0012\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b(\u0010*J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0018\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0015¨\u0006-"
    }
    d2 = {
        "Lio/branch/search/BranchAppStoreLinkResult;",
        "Lio/branch/search/BranchBaseLinkResult;",
        "Landroid/os/Parcel;",
        "parcel",
        "",
        "flags",
        "Lh4/z;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "",
        "averageRating",
        "F",
        "getAverageRating",
        "()F",
        "",
        "ratingsCount",
        "J",
        "getRatingsCount",
        "()J",
        "",
        "downloadsCount",
        "Ljava/lang/String;",
        "getDownloadsCount",
        "()Ljava/lang/String;",
        "appSizeInMB",
        "getAppSizeInMB",
        "linking",
        "entityId",
        "requestId",
        "resultId",
        "appStoreId",
        "linkName",
        "appName",
        "rankingHint",
        "iconUrl",
        "description",
        "impressionUrl",
        "clickTrackingUrl",
        "containerType",
        "contentType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "(Landroid/os/Parcel;)V",
        "CREATOR",
        "a",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Lio/branch/search/BranchAppStoreLinkResult$a;


# instance fields
.field private final appSizeInMB:Ljava/lang/String;

.field private final averageRating:F

.field private final downloadsCount:Ljava/lang/String;

.field private final linking:Ljava/lang/String;

.field private final ratingsCount:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/BranchAppStoreLinkResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/BranchAppStoreLinkResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/BranchAppStoreLinkResult;->CREATOR:Lio/branch/search/BranchAppStoreLinkResult$a;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    const/4 v15, 0x0

    const/4 v14, 0x1

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v15, v14, v15}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move v1, v14

    move-object/from16 v14, v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    move-object v1, v15

    move/from16 v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object/from16 v21, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v0, v1, v2, v1}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v0, v1, v2, v1}, Lio/branch/search/k5;->a(Landroid/os/Parcel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct/range {v1 .. v20}, Lio/branch/search/BranchAppStoreLinkResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/BranchAppStoreLinkResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 36

    move-object/from16 v10, p0

    move-object/from16 v11, p17

    move-object/from16 v12, p18

    move-object/from16 v13, p19

    const-string v0, "entityId"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStoreId"

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkName"

    move-object/from16 v2, p5

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rankingHint"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    move-object/from16 v4, p8

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v3, p9

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionUrl"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickTrackingUrl"

    move-object/from16 v7, p11

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerType"

    move-object/from16 v6, p12

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    move-object/from16 v9, p13

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadsCount"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSizeInMB"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linking"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/BranchAppStoreLinkResult;->CREATOR:Lio/branch/search/BranchAppStoreLinkResult$a;

    move-object/from16 v6, p19

    move-object/from16 v8, p12

    invoke-static/range {v0 .. v9}, Lio/branch/search/BranchAppStoreLinkResult$a;->a(Lio/branch/search/BranchAppStoreLinkResult$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v7, Lio/branch/search/l;->f:Lio/branch/search/l;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    const-string v2, "app_store_app"

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lio/branch/search/BranchBaseLinkResult;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Landroid/os/UserHandle;Ljava/lang/String;)V

    move/from16 v0, p14

    iput v0, v10, Lio/branch/search/BranchAppStoreLinkResult;->averageRating:F

    move-wide/from16 v0, p15

    iput-wide v0, v10, Lio/branch/search/BranchAppStoreLinkResult;->ratingsCount:J

    iput-object v11, v10, Lio/branch/search/BranchAppStoreLinkResult;->downloadsCount:Ljava/lang/String;

    iput-object v12, v10, Lio/branch/search/BranchAppStoreLinkResult;->appSizeInMB:Ljava/lang/String;

    iput-object v13, v10, Lio/branch/search/BranchAppStoreLinkResult;->linking:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppSizeInMB()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchAppStoreLinkResult;->appSizeInMB:Ljava/lang/String;

    return-object p0
.end method

.method public final getAverageRating()F
    .registers 1

    iget p0, p0, Lio/branch/search/BranchAppStoreLinkResult;->averageRating:F

    return p0
.end method

.method public final getDownloadsCount()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchAppStoreLinkResult;->downloadsCount:Ljava/lang/String;

    return-object p0
.end method

.method public final getRatingsCount()J
    .registers 3

    iget-wide v0, p0, Lio/branch/search/BranchAppStoreLinkResult;->ratingsCount:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->entity_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->requestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/AnalyticsEntity;->resultId:Ljava/lang/Integer;

    const-string v0, "resultId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->destination_store_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getAppName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->ranking_hint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getImpressionUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchBaseLinkResult;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->containerType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchBaseLinkResult;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lio/branch/search/BranchAppStoreLinkResult;->averageRating:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lio/branch/search/BranchAppStoreLinkResult;->ratingsCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lio/branch/search/BranchAppStoreLinkResult;->downloadsCount:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lio/branch/search/BranchAppStoreLinkResult;->appSizeInMB:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lio/branch/search/BranchAppStoreLinkResult;->linking:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
