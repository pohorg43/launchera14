.class public final Lr5/g0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh6/c;

.field public static final b:Lh6/c;

.field public static final c:Lh6/c;

.field public static final d:Lh6/c;

.field public static final e:Lh6/c;

.field public static final f:Lh6/c;

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lh6/c;

.field public static final i:Lh6/c;

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lh6/c;

.field public static final l:Lh6/c;

.field public static final m:Lh6/c;

.field public static final n:Lh6/c;

.field public static final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lh6/c;

    const-string v1, "org.jspecify.nullness.Nullable"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr5/g0;->a:Lh6/c;

    new-instance v1, Lh6/c;

    const-string v2, "org.jspecify.nullness.NullnessUnspecified"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lr5/g0;->b:Lh6/c;

    new-instance v1, Lh6/c;

    const-string v2, "org.jspecify.nullness.NullMarked"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lr5/g0;->c:Lh6/c;

    new-instance v2, Lh6/c;

    const-string v3, "org.jspecify.annotations.Nullable"

    invoke-direct {v2, v3}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v2, Lr5/g0;->d:Lh6/c;

    new-instance v3, Lh6/c;

    const-string v4, "org.jspecify.annotations.NullnessUnspecified"

    invoke-direct {v3, v4}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v3, Lr5/g0;->e:Lh6/c;

    new-instance v3, Lh6/c;

    const-string v4, "org.jspecify.annotations.NullMarked"

    invoke-direct {v3, v4}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v3, Lr5/g0;->f:Lh6/c;

    const/16 v4, 0xe

    new-array v4, v4, [Lh6/c;

    sget-object v5, Lr5/f0;->i:Lh6/c;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lh6/c;

    const-string v7, "androidx.annotation.Nullable"

    invoke-direct {v5, v7}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Lh6/c;

    invoke-direct {v5, v7}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Lh6/c;

    const-string v9, "android.annotation.Nullable"

    invoke-direct {v5, v9}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-instance v5, Lh6/c;

    const-string v10, "com.android.annotations.Nullable"

    invoke-direct {v5, v10}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    aput-object v5, v4, v10

    new-instance v5, Lh6/c;

    const-string v11, "org.eclipse.jdt.annotation.Nullable"

    invoke-direct {v5, v11}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x5

    aput-object v5, v4, v11

    new-instance v5, Lh6/c;

    const-string v12, "org.checkerframework.checker.nullness.qual.Nullable"

    invoke-direct {v5, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x6

    aput-object v5, v4, v12

    new-instance v5, Lh6/c;

    const-string v13, "javax.annotation.Nullable"

    invoke-direct {v5, v13}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x7

    aput-object v5, v4, v13

    new-instance v5, Lh6/c;

    const-string v14, "javax.annotation.CheckForNull"

    invoke-direct {v5, v14}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x8

    aput-object v5, v4, v15

    new-instance v5, Lh6/c;

    const-string v15, "edu.umd.cs.findbugs.annotations.CheckForNull"

    invoke-direct {v5, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x9

    aput-object v5, v4, v15

    new-instance v5, Lh6/c;

    const-string v15, "edu.umd.cs.findbugs.annotations.Nullable"

    invoke-direct {v5, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v15, 0xa

    aput-object v5, v4, v15

    new-instance v5, Lh6/c;

    const-string v15, "edu.umd.cs.findbugs.annotations.PossiblyNull"

    invoke-direct {v5, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v15, 0xb

    aput-object v5, v4, v15

    new-instance v5, Lh6/c;

    const-string v13, "io.reactivex.annotations.Nullable"

    invoke-direct {v5, v13}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v13, 0xc

    aput-object v5, v4, v13

    new-instance v5, Lh6/c;

    const-string v13, "io.reactivex.rxjava3.annotations.Nullable"

    invoke-direct {v5, v13}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v13, 0xd

    aput-object v5, v4, v13

    invoke-static {v4}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lr5/g0;->g:Ljava/util/List;

    new-instance v5, Lh6/c;

    const-string v13, "javax.annotation.Nonnull"

    invoke-direct {v5, v13}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v5, Lr5/g0;->h:Lh6/c;

    new-instance v13, Lh6/c;

    invoke-direct {v13, v14}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v13, Lr5/g0;->i:Lh6/c;

    new-array v13, v15, [Lh6/c;

    sget-object v14, Lr5/f0;->h:Lh6/c;

    aput-object v14, v13, v6

    new-instance v14, Lh6/c;

    const-string v15, "edu.umd.cs.findbugs.annotations.NonNull"

    invoke-direct {v14, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v8

    new-instance v14, Lh6/c;

    const-string v15, "androidx.annotation.NonNull"

    invoke-direct {v14, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v7

    new-instance v14, Lh6/c;

    invoke-direct {v14, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v9

    new-instance v14, Lh6/c;

    const-string v15, "android.annotation.NonNull"

    invoke-direct {v14, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v10

    new-instance v14, Lh6/c;

    const-string v15, "com.android.annotations.NonNull"

    invoke-direct {v14, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    aput-object v14, v13, v11

    new-instance v11, Lh6/c;

    const-string v14, "org.eclipse.jdt.annotation.NonNull"

    invoke-direct {v11, v14}, Lh6/c;-><init>(Ljava/lang/String;)V

    aput-object v11, v13, v12

    new-instance v11, Lh6/c;

    const-string v12, "org.checkerframework.checker.nullness.qual.NonNull"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x7

    aput-object v11, v13, v12

    new-instance v11, Lh6/c;

    const-string v12, "lombok.NonNull"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x8

    aput-object v11, v13, v12

    new-instance v11, Lh6/c;

    const-string v12, "io.reactivex.annotations.NonNull"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x9

    aput-object v11, v13, v12

    new-instance v11, Lh6/c;

    const-string v12, "io.reactivex.rxjava3.annotations.NonNull"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/16 v12, 0xa

    aput-object v11, v13, v12

    invoke-static {v13}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    sput-object v11, Lr5/g0;->j:Ljava/util/List;

    new-instance v12, Lh6/c;

    const-string v13, "org.checkerframework.checker.nullness.compatqual.NullableDecl"

    invoke-direct {v12, v13}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v12, Lr5/g0;->k:Lh6/c;

    new-instance v13, Lh6/c;

    const-string v14, "org.checkerframework.checker.nullness.compatqual.NonNullDecl"

    invoke-direct {v13, v14}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v13, Lr5/g0;->l:Lh6/c;

    new-instance v14, Lh6/c;

    const-string v15, "androidx.annotation.RecentlyNullable"

    invoke-direct {v14, v15}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v14, Lr5/g0;->m:Lh6/c;

    new-instance v15, Lh6/c;

    const-string v9, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v15, v9}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v15, Lr5/g0;->n:Lh6/c;

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v9, v4}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v5}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v11}, Li4/o0;->i(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v12}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v13}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v14}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v15}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v4, v0}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v1}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v2}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v3}, Li4/o0;->j(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    new-array v0, v7, [Lh6/c;

    sget-object v1, Lr5/f0;->k:Lh6/c;

    aput-object v1, v0, v6

    sget-object v1, Lr5/f0;->l:Lh6/c;

    aput-object v1, v0, v8

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr5/g0;->o:Ljava/util/Set;

    new-array v0, v7, [Lh6/c;

    sget-object v1, Lr5/f0;->j:Lh6/c;

    aput-object v1, v0, v6

    sget-object v1, Lr5/f0;->m:Lh6/c;

    aput-object v1, v0, v8

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lr5/g0;->p:Ljava/util/Set;

    new-array v0, v10, [Lh4/j;

    sget-object v1, Lr5/f0;->c:Lh6/c;

    sget-object v2, Lf5/j$a;->u:Lh6/c;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v6

    sget-object v1, Lr5/f0;->d:Lh6/c;

    sget-object v2, Lf5/j$a;->x:Lh6/c;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v8

    sget-object v1, Lr5/f0;->e:Lh6/c;

    sget-object v2, Lf5/j$a;->n:Lh6/c;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v7

    sget-object v1, Lr5/f0;->f:Lh6/c;

    sget-object v2, Lf5/j$a;->y:Lh6/c;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v3, v0, v1

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lr5/g0;->q:Ljava/util/Map;

    return-void
.end method
