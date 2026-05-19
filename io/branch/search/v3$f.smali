.class public Lio/branch/search/v3$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/v3;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lio/branch/search/v3;


# direct methods
.method public constructor <init>(Lio/branch/search/v3;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/v3$f;->b:Lio/branch/search/v3;

    iput-object p2, p0, Lio/branch/search/v3$f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lio/branch/search/v3$f;->b:Lio/branch/search/v3;

    iget-object v0, v0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->a()Lio/branch/search/c4;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/v3$f;->a:Ljava/util/List;

    invoke-virtual {v0, p0}, Lio/branch/search/c4;->b(Ljava/util/List;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception p0

    const-string v0, "SQLiteManager"

    const-string v1, "Exception from addImpressions."

    invoke-static {v0, v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-void
.end method
