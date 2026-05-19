.class public final synthetic Landroidx/room/m0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/m0;->a:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Landroidx/room/m0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/room/m0;->a:Landroidx/room/QueryInterceptorDatabase;

    iget-object p0, p0, Landroidx/room/m0;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/room/QueryInterceptorDatabase;->f(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;)V

    return-void
.end method
