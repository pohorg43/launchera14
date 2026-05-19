.class public final synthetic Lcom/oplus/zoom/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/oplus/zoom/n;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/zoom/n;

    invoke-direct {v0}, Lcom/oplus/zoom/n;-><init>()V

    sput-object v0, Lcom/oplus/zoom/n;->a:Lcom/oplus/zoom/n;

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

    invoke-static {}, Lcom/oplus/zoom/ZoomRootTaskController$1;->b()V

    return-void
.end method
