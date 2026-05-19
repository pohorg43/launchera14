.class public Lio/branch/search/BranchQueryHintResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/BranchQueryHintResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/BranchQueryHint;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/BranchQueryHintResult$a;

    invoke-direct {v0}, Lio/branch/search/BranchQueryHintResult$a;-><init>()V

    sput-object v0, Lio/branch/search/BranchQueryHintResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchQueryHint;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/BranchQueryHintResult;->a:Ljava/util/List;

    iput-object p2, p0, Lio/branch/search/BranchQueryHintResult;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lio/branch/search/BranchQueryHintRequest;Lorg/json/JSONObject;)Lio/branch/search/BranchQueryHintResult;
    .registers 15
    .param p0  # Lio/branch/search/BranchQueryHintRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v6, Lio/branch/search/p0;

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/branch/search/p0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    const-string v2, "hints"

    const-string v3, "hints"

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_1a
    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_57

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_57

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "result_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lio/branch/search/BranchQueryHint;

    iget-object v8, v6, Lio/branch/search/p0;->j:Ljava/lang/String;

    iget-object v10, v6, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/branch/search/BranchQueryHint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lio/branch/search/p0;->c(Lio/branch/search/AnalyticsEntity;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_4e} :catch_51

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :catch_51
    move-exception p1

    const-string v0, "BranchQueryHintResult.createFromJson"

    invoke-static {v0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    invoke-virtual {v6}, Lio/branch/search/p0;->d()V

    new-instance p1, Lio/branch/search/BranchQueryHintResult;

    iget-object v0, v6, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lio/branch/search/BranchQueryHintResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHints()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/BranchQueryHint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/BranchQueryHintResult;->a:Ljava/util/List;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lio/branch/search/BranchQueryHintResult;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p0, p0, Lio/branch/search/BranchQueryHintResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
