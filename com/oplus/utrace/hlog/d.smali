.class public final synthetic Lcom/oplus/utrace/hlog/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/oplus/utrace/hlog/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/hlog/d;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/d;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/d;->a:Lcom/oplus/utrace/hlog/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;->a()V

    return-void
.end method
