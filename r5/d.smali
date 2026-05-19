.class public final Lr5/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh6/c;

.field public static final b:Lh6/c;

.field public static final c:Lh6/c;

.field public static final d:Lh6/c;

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr5/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lr5/u;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lr5/u;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lh6/c;

    const-string v1, "javax.annotation.meta.TypeQualifierNickname"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/d;->a:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "javax.annotation.meta.TypeQualifier"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/d;->b:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "javax.annotation.meta.TypeQualifierDefault"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/d;->c:Lh6/c;

    new-instance v0, Lh6/c;

    const-string v1, "kotlin.annotations.jvm.UnderMigration"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/d;->d:Lh6/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lr5/c;

    sget-object v1, Lr5/c;->d:Lr5/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lr5/c;->b:Lr5/c;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lr5/c;->c:Lr5/c;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v5, Lr5/c;->f:Lr5/c;

    const/4 v6, 0x3

    aput-object v5, v0, v6

    sget-object v5, Lr5/c;->e:Lr5/c;

    const/4 v6, 0x4

    aput-object v5, v0, v6

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr5/d;->e:Ljava/util/List;

    new-array v5, v4, [Lh4/j;

    sget-object v7, Lr5/g0;->c:Lh6/c;

    new-instance v8, Lr5/u;

    new-instance v9, Lz5/k;

    sget-object v10, Lz5/j;->c:Lz5/j;

    invoke-direct {v9, v10, v2}, Lz5/k;-><init>(Lz5/j;Z)V

    invoke-direct {v8, v9, v0, v2}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;Z)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v5, v2

    sget-object v7, Lr5/g0;->f:Lh6/c;

    new-instance v8, Lr5/u;

    new-instance v9, Lz5/k;

    invoke-direct {v9, v10, v2}, Lz5/k;-><init>(Lz5/j;Z)V

    invoke-direct {v8, v9, v0, v2}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;Z)V

    new-instance v0, Lh4/j;

    invoke-direct {v0, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v5, v3

    invoke-static {v5}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr5/d;->f:Ljava/util/Map;

    new-array v5, v4, [Lh4/j;

    new-instance v7, Lh6/c;

    const-string v8, "javax.annotation.ParametersAreNullableByDefault"

    invoke-direct {v7, v8}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Lr5/u;

    new-instance v9, Lz5/k;

    sget-object v11, Lz5/j;->b:Lz5/j;

    invoke-direct {v9, v11, v2}, Lz5/k;-><init>(Lz5/j;Z)V

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v8, v9, v11, v2, v6}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;ZI)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v5, v2

    new-instance v7, Lh6/c;

    const-string v8, "javax.annotation.ParametersAreNonnullByDefault"

    invoke-direct {v7, v8}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v8, Lr5/u;

    new-instance v9, Lz5/k;

    invoke-direct {v9, v10, v2}, Lz5/k;-><init>(Lz5/j;Z)V

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v9, v1, v2, v6}, Lr5/u;-><init>(Lz5/k;Ljava/util/Collection;ZI)V

    new-instance v1, Lh4/j;

    invoke-direct {v1, v7, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v3

    invoke-static {v5}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v1

    const-string v5, "<this>"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "map"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    sput-object v5, Lr5/d;->g:Ljava/util/Map;

    new-array v0, v4, [Lh6/c;

    sget-object v1, Lr5/g0;->h:Lh6/c;

    aput-object v1, v0, v2

    sget-object v1, Lr5/g0;->i:Lh6/c;

    aput-object v1, v0, v3

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr5/d;->h:Ljava/util/Set;

    return-void
.end method
