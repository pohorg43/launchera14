.class public final La8/r;
.super Lkotlinx/serialization/json/JsonPrimitive;
.source ""


# annotations
.annotation runtime Lkotlinx/serialization/a;
    with = La8/s;
.end annotation


# static fields
.field public static final a:La8/r;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La8/r;

    invoke-direct {v0}, La8/r;-><init>()V

    sput-object v0, La8/r;->a:La8/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    const-string p0, "null"

    return-object p0
.end method
