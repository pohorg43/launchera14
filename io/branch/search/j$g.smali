.class public Lio/branch/search/j$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ZLorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/branch/search/j$g;->a:Z

    iput-object p2, p0, Lio/branch/search/j$g;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static a()Lio/branch/search/j$g;
    .registers 3

    new-instance v0, Lio/branch/search/j$g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/branch/search/j$g;-><init>(ZLorg/json/JSONObject;)V

    return-object v0
.end method

.method public static a(Lio/branch/search/j;)Lio/branch/search/j$g;
    .registers 3

    new-instance v0, Lio/branch/search/j$g;

    iget-object p0, p0, Lio/branch/search/j;->a:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lio/branch/search/j$g;-><init>(ZLorg/json/JSONObject;)V

    return-object v0
.end method
