.class public final Lr5/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJavaNullabilityAnnotationSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaNullabilityAnnotationSettings.kt\norg/jetbrains/kotlin/load/java/JavaNullabilityAnnotationSettingsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lh6/c;

.field public static final b:[Lh6/c;

.field public static final c:Lr5/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr5/h0<",
            "Lr5/z;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lr5/z;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lh6/c;

    const-string v1, "org.jspecify.nullness"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lh6/c;

    const-string v2, "org.jspecify.annotations"

    invoke-direct {v1, v2}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v1, Lr5/y;->a:Lh6/c;

    new-instance v2, Lh6/c;

    const-string v3, "io.reactivex.rxjava3.annotations"

    invoke-direct {v2, v3}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v3, Lh6/c;

    const-string v4, "org.checkerframework.checker.nullness.compatqual"

    invoke-direct {v3, v4}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lh6/c;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RXJAVA3_ANNOTATIONS_PACKAGE.asString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v6, v5, [Lh6/c;

    new-instance v7, Lh6/c;

    const-string v8, ".Nullable"

    invoke-static {v4, v8}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lh6/c;

    const-string v9, ".NonNull"

    invoke-static {v4, v9}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lh6/c;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v7, v6, v4

    sput-object v6, Lr5/y;->b:[Lh6/c;

    new-instance v6, Lr5/i0;

    const/16 v7, 0x11

    new-array v7, v7, [Lh4/j;

    new-instance v9, Lh6/c;

    const-string v10, "org.jetbrains.annotations"

    invoke-direct {v9, v10}, Lh6/c;-><init>(Ljava/lang/String;)V

    sget-object v10, Lr5/z;->d:Lr5/z$a;

    sget-object v10, Lr5/z;->e:Lr5/z;

    new-instance v11, Lh4/j;

    invoke-direct {v11, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v7, v8

    new-instance v9, Lh6/c;

    const-string v11, "androidx.annotation"

    invoke-direct {v9, v11}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lh4/j;

    invoke-direct {v11, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v7, v4

    new-instance v9, Lh6/c;

    const-string v11, "android.support.annotation"

    invoke-direct {v9, v11}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lh4/j;

    invoke-direct {v11, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v7, v5

    new-instance v5, Lh6/c;

    const-string v9, "android.annotation"

    invoke-direct {v5, v9}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v5, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v9, v7, v5

    new-instance v5, Lh6/c;

    const-string v9, "com.android.annotations"

    invoke-direct {v5, v9}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v5, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v9, v7, v5

    new-instance v9, Lh6/c;

    const-string v11, "org.eclipse.jdt.annotation"

    invoke-direct {v9, v11}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lh4/j;

    invoke-direct {v11, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x5

    aput-object v11, v7, v9

    new-instance v9, Lh6/c;

    const-string v11, "org.checkerframework.checker.nullness.qual"

    invoke-direct {v9, v11}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lh4/j;

    invoke-direct {v11, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x6

    aput-object v11, v7, v9

    new-instance v9, Lh4/j;

    invoke-direct {v9, v3, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v9, v7, v3

    new-instance v3, Lh6/c;

    const-string v9, "javax.annotation"

    invoke-direct {v3, v9}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v3, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v9, v7, v3

    new-instance v9, Lh6/c;

    const-string v11, "edu.umd.cs.findbugs.annotations"

    invoke-direct {v9, v11}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v11, Lh4/j;

    invoke-direct {v11, v9, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v9, 0x9

    aput-object v11, v7, v9

    new-instance v11, Lh6/c;

    const-string v12, "io.reactivex.annotations"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Lh4/j;

    invoke-direct {v12, v11, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0xa

    aput-object v12, v7, v11

    new-instance v11, Lh6/c;

    const-string v12, "androidx.annotation.RecentlyNullable"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Lr5/z;

    sget-object v13, Lr5/k0;->c:Lr5/k0;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14, v14, v5}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;I)V

    new-instance v15, Lh4/j;

    invoke-direct {v15, v11, v12}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0xb

    aput-object v15, v7, v11

    new-instance v11, Lh6/c;

    const-string v12, "androidx.annotation.RecentlyNonNull"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Lr5/z;

    invoke-direct {v12, v13, v14, v14, v5}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;I)V

    new-instance v15, Lh4/j;

    invoke-direct {v15, v11, v12}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0xc

    aput-object v15, v7, v11

    new-instance v11, Lh6/c;

    const-string v12, "lombok"

    invoke-direct {v11, v12}, Lh6/c;-><init>(Ljava/lang/String;)V

    new-instance v12, Lh4/j;

    invoke-direct {v12, v11, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0xd

    aput-object v12, v7, v10

    new-instance v10, Lr5/z;

    new-instance v11, Lh4/e;

    invoke-direct {v11, v4, v9, v8}, Lh4/e;-><init>(III)V

    sget-object v12, Lr5/k0;->d:Lr5/k0;

    invoke-direct {v10, v13, v11, v12}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;)V

    new-instance v11, Lh4/j;

    invoke-direct {v11, v0, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xe

    aput-object v11, v7, v0

    new-instance v0, Lr5/z;

    new-instance v10, Lh4/e;

    invoke-direct {v10, v4, v9, v8}, Lh4/e;-><init>(III)V

    invoke-direct {v0, v13, v10, v12}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;)V

    new-instance v9, Lh4/j;

    invoke-direct {v9, v1, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xf

    aput-object v9, v7, v0

    new-instance v0, Lr5/z;

    new-instance v1, Lh4/e;

    invoke-direct {v1, v4, v3, v8}, Lh4/e;-><init>(III)V

    invoke-direct {v0, v13, v1, v12}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;)V

    new-instance v1, Lh4/j;

    invoke-direct {v1, v2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x10

    aput-object v1, v7, v0

    invoke-static {v7}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Lr5/i0;-><init>(Ljava/util/Map;)V

    sput-object v6, Lr5/y;->c:Lr5/h0;

    new-instance v0, Lr5/z;

    invoke-direct {v0, v13, v14, v14, v5}, Lr5/z;-><init>(Lr5/k0;Lh4/e;Lr5/k0;I)V

    sput-object v0, Lr5/y;->d:Lr5/z;

    return-void
.end method
