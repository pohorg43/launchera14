.class public abstract Lio/branch/search/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/j$e;,
        Lio/branch/search/j$j;,
        Lio/branch/search/j$i;,
        Lio/branch/search/j$l;,
        Lio/branch/search/j$h;,
        Lio/branch/search/j$b;,
        Lio/branch/search/j$f;,
        Lio/branch/search/j$d;,
        Lio/branch/search/j$k;,
        Lio/branch/search/j$c;,
        Lio/branch/search/j$g;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/branch/search/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/j$a;

    invoke-direct {v0}, Lio/branch/search/j$a;-><init>()V

    sput-object v0, Lio/branch/search/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/j;->a:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lio/branch/search/j;
    .registers 4
    .param p0  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "@type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_a6

    goto/16 :goto_6a

    :sswitch_13
    const-string v1, "launch_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6a

    :cond_1c
    const/4 v2, 0x7

    goto :goto_6a

    :sswitch_1e
    const-string v1, "app_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_6a

    :cond_27
    const/4 v2, 0x6

    goto :goto_6a

    :sswitch_29
    const-string v1, "test_installed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_6a

    :cond_32
    const/4 v2, 0x5

    goto :goto_6a

    :sswitch_34
    const-string v1, "view_intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6a

    :cond_3d
    const/4 v2, 0x4

    goto :goto_6a

    :sswitch_3f
    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_6a

    :cond_48
    const/4 v2, 0x3

    goto :goto_6a

    :sswitch_4a
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_6a

    :cond_53
    const/4 v2, 0x2

    goto :goto_6a

    :sswitch_55
    const-string v1, "test_not_installed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_6a

    :cond_5e
    const/4 v2, 0x1

    goto :goto_6a

    :sswitch_60
    const-string v1, "deep_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_c8

    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Unknown type!"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_76  #0x7
    new-instance v1, Lio/branch/search/j$f;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$f;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :pswitch_7c  #0x6
    new-instance v0, Lio/branch/search/j$b;

    invoke-direct {v0, p0}, Lio/branch/search/j$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :pswitch_82  #0x5
    new-instance v1, Lio/branch/search/j$i;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$i;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :pswitch_88  #0x4
    new-instance v1, Lio/branch/search/j$k;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$k;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :pswitch_8e  #0x3
    new-instance v1, Lio/branch/search/j$h;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$h;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :pswitch_94  #0x2
    new-instance v1, Lio/branch/search/j$d;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$d;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :pswitch_9a  #0x1
    new-instance v1, Lio/branch/search/j$j;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$j;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :pswitch_a0  #0x0
    new-instance v1, Lio/branch/search/j$e;

    invoke-direct {v1, p0, v0}, Lio/branch/search/j$e;-><init>(Lorg/json/JSONObject;Lio/branch/search/j$a;)V

    return-object v1

    :sswitch_data_a6
    .sparse-switch
        -0x7607d5e8 -> :sswitch_60
        -0x4aaf9fdf -> :sswitch_55
        -0x468ec964 -> :sswitch_4a
        -0x146a23ba -> :sswitch_3f
        -0x8e95a8a -> :sswitch_34
        0x79b680d -> :sswitch_29
        0x4596d00c -> :sswitch_1e
        0x727d10a8 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_a0  #00000000
        :pswitch_9a  #00000001
        :pswitch_94  #00000002
        :pswitch_8e  #00000003
        :pswitch_88  #00000004
        :pswitch_82  #00000005
        :pswitch_7c  #00000006
        :pswitch_76  #00000007
    .end packed-switch
.end method

.method public static a(Lio/branch/search/j;)Ljava/lang/String;
    .registers 2
    .param p0  # Lio/branch/search/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p0, Lio/branch/search/j$h;

    if-eqz v0, :cond_7

    const-string p0, "shortcut"

    return-object p0

    :cond_7
    instance-of v0, p0, Lio/branch/search/j$k;

    if-eqz v0, :cond_e

    const-string p0, "view_intent"

    return-object p0

    :cond_e
    instance-of v0, p0, Lio/branch/search/j$d;

    if-eqz v0, :cond_15

    const-string p0, "custom_intent"

    return-object p0

    :cond_15
    instance-of v0, p0, Lio/branch/search/j$e;

    if-eqz v0, :cond_1c

    const-string p0, "deepview"

    return-object p0

    :cond_1c
    instance-of v0, p0, Lio/branch/search/j$f;

    if-eqz v0, :cond_23

    const-string p0, "launch_intent"

    return-object p0

    :cond_23
    instance-of v0, p0, Lio/branch/search/j$b;

    if-eqz v0, :cond_2a

    const-string p0, "app_info_open"

    return-object p0

    :cond_2a
    instance-of v0, p0, Lio/branch/search/j$i;

    if-eqz v0, :cond_31

    const-string p0, "test_installed"

    return-object p0

    :cond_31
    instance-of p0, p0, Lio/branch/search/j$j;

    if-eqz p0, :cond_38

    const-string p0, "test_not_installed"

    return-object p0

    :cond_38
    const-string p0, "unknown"

    return-object p0
.end method


# virtual methods
.method public a()Lio/branch/search/IBranchIntentHandler;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->j()Lio/branch/search/IBranchIntentHandler;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Lio/branch/search/s;)Lio/branch/search/j$g;
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/j;->a()Lio/branch/search/IBranchIntentHandler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/j;->c(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;

    move-result-object p0

    return-object p0
.end method

.method public abstract a(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public b()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public c(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/IBranchIntentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/j;->b(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lio/branch/search/j$g;->a()Lio/branch/search/j$g;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/j;->a(Landroid/content/Context;Lio/branch/search/s;Lio/branch/search/IBranchIntentHandler;)Lio/branch/search/j$g;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p0, p0, Lio/branch/search/j;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
