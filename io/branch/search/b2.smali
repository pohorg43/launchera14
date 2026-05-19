.class public final Lio/branch/search/b2;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lio/branch/search/b2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/branch/search/b2;

    invoke-direct {v0}, Lio/branch/search/b2;-><init>()V

    sput-object v0, Lio/branch/search/b2;->a:Lio/branch/search/b2;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/b2;->a:Lio/branch/search/b2;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "cold_start_bundle"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v1, "context.assets.open(\"cold_start_bundle\")"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/branch/search/l5;->a:Lio/branch/search/l5;

    invoke-virtual {v0, p0, v1}, Lio/branch/search/b2;->a(Ljava/io/InputStream;Lio/branch/search/y4;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lio/branch/search/y4;)Lorg/json/JSONObject;
    .registers 4

    invoke-interface {p2, p1}, Lio/branch/search/y4;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/s5;->a([B)[B

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    const-string p2, "unzipped"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "StandardCharsets.UTF_8"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
