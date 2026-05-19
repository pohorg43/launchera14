.class Lcom/oplus/util/OplusGcSupressionExtImpl$Build;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusGcSupressionExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/util/OplusGcSupressionExtImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/util/OplusGcSupressionExtImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/util/OplusGcSupressionExtImpl;-><init>(Lcom/oplus/util/OplusGcSupressionExtImpl$1;)V

    sput-object v0, Lcom/oplus/util/OplusGcSupressionExtImpl$Build;->INSTANCE:Lcom/oplus/util/OplusGcSupressionExtImpl;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/util/OplusGcSupressionExtImpl;
    .registers 1

    sget-object v0, Lcom/oplus/util/OplusGcSupressionExtImpl$Build;->INSTANCE:Lcom/oplus/util/OplusGcSupressionExtImpl;

    return-object v0
.end method
