.class public Lio/branch/search/a2$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/a2$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    const v0, 0xf731400

    iput v0, p0, Lio/branch/search/a2$c;->b:I

    iput v0, p0, Lio/branch/search/a2$c;->c:I

    iput-object p1, p0, Lio/branch/search/a2$c;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/branch/search/a2$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lio/branch/search/a2$c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    const v0, 0xf731400

    iput v0, p0, Lio/branch/search/a2$c;->b:I

    iput v0, p0, Lio/branch/search/a2$c;->c:I

    const-string v1, "actions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "request_id"

    const-string v3, "error"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/branch/search/a2$c;->d:Ljava/lang/String;

    const-string v2, "min_refresh_wait_millis"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lio/branch/search/a2$c;->b:I

    const-string v2, "max_refresh_wait_millis"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/branch/search/a2$c;->c:I

    const/4 p1, 0x0

    :goto_32
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_d2

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_d4

    goto :goto_87

    :sswitch_51
    const-string v5, "IMAGE_PRELOAD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_87

    :cond_5a
    const/4 v4, 0x4

    goto :goto_87

    :sswitch_5c
    const-string v5, "DELETE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto :goto_87

    :cond_65
    const/4 v4, 0x3

    goto :goto_87

    :sswitch_67
    const-string v5, "CREATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto :goto_87

    :cond_70
    const/4 v4, 0x2

    goto :goto_87

    :sswitch_72
    const-string v5, "CLEAR_IMAGES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto :goto_87

    :cond_7b
    const/4 v4, 0x1

    goto :goto_87

    :sswitch_7d
    const-string v5, "UPDATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_87

    :cond_86
    const/4 v4, 0x0

    :goto_87
    packed-switch v4, :pswitch_data_ea

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected value: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a1  #0x4
    iget-object v2, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    new-instance v3, Lio/branch/search/a2$g;

    invoke-direct {v3, v0}, Lio/branch/search/a2$g;-><init>(Lorg/json/JSONObject;)V

    goto :goto_cb

    :pswitch_a9  #0x3
    iget-object v2, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    new-instance v3, Lio/branch/search/a2$f;

    invoke-direct {v3, v0}, Lio/branch/search/a2$f;-><init>(Lorg/json/JSONObject;)V

    goto :goto_cb

    :pswitch_b1  #0x2
    iget-object v2, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    new-instance v3, Lio/branch/search/a2$e;

    invoke-direct {v3, v0}, Lio/branch/search/a2$e;-><init>(Lorg/json/JSONObject;)V

    goto :goto_cb

    :pswitch_b9  #0x1
    iget-object v0, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    new-instance v2, Lio/branch/search/a2$d;

    invoke-direct {v2}, Lio/branch/search/a2$d;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    :pswitch_c4  #0x0
    iget-object v2, p0, Lio/branch/search/a2$c;->a:Ljava/util/List;

    new-instance v3, Lio/branch/search/a2$l;

    invoke-direct {v3, v0}, Lio/branch/search/a2$l;-><init>(Lorg/json/JSONObject;)V

    :goto_cb
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ce
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_32

    :cond_d2
    return-void

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x6a6cd337 -> :sswitch_7d
        0x1d0cd8ca -> :sswitch_72
        0x76f894fc -> :sswitch_67
        0x77f979ab -> :sswitch_5c
        0x7d0ce6e5 -> :sswitch_51
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_c4  #00000000
        :pswitch_b9  #00000001
        :pswitch_b1  #00000002
        :pswitch_a9  #00000003
        :pswitch_a1  #00000004
    .end packed-switch
.end method
