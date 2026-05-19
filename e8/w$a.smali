.class public Le8/w$a;
.super Lokio/AsyncTimeout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/w;-><init>(Le8/u;Le8/x;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le8/w;


# direct methods
.method public constructor <init>(Le8/w;)V
    .registers 2

    iput-object p1, p0, Le8/w$a;->a:Le8/w;

    invoke-direct {p0}, Lokio/AsyncTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public timedOut()V
    .registers 1

    iget-object p0, p0, Le8/w$a;->a:Le8/w;

    invoke-virtual {p0}, Le8/w;->b()V

    return-void
.end method
