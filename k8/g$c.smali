.class public Lk8/g$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lokio/BufferedSource;

.field public d:Lokio/BufferedSink;

.field public e:Lk8/g$e;

.field public f:I


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lk8/g$e;->a:Lk8/g$e;

    iput-object p1, p0, Lk8/g$c;->e:Lk8/g$e;

    return-void
.end method
