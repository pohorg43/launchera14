.class public final La8/j$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lx7/a;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:La8/j$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La8/j$a;

    invoke-direct {v0}, La8/j$a;-><init>()V

    sput-object v0, La8/j$a;->a:La8/j$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    move-object p0, p1

    check-cast p0, Lx7/a;

    const-string p1, "$receiver"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, La8/e;->a:La8/e;

    new-instance v2, La8/k;

    invoke-direct {v2, p1}, La8/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const-string v1, "JsonPrimitive"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    sget-object p1, La8/f;->a:La8/f;

    new-instance v2, La8/k;

    invoke-direct {v2, p1}, La8/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string v1, "JsonNull"

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    sget-object p1, La8/g;->a:La8/g;

    new-instance v2, La8/k;

    invoke-direct {v2, p1}, La8/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string v1, "JsonLiteral"

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    sget-object p1, La8/h;->a:La8/h;

    new-instance v2, La8/k;

    invoke-direct {v2, p1}, La8/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string v1, "JsonObject"

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    sget-object p1, La8/i;->a:La8/i;

    new-instance v2, La8/k;

    invoke-direct {v2, p1}, La8/k;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string v1, "JsonArray"

    invoke-static/range {v0 .. v5}, Lx7/a;->a(Lx7/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZI)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
