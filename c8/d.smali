.class public final Lc8/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc8/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc8/a;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    invoke-direct {v0, v1, v1, v1, v1}, Lc8/a;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lc8/d;->a:Lc8/b;

    return-void
.end method
