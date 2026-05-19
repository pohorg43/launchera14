.class public abstract Lk8/g$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# static fields
.field public static final a:Lk8/g$e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk8/g$e$a;

    invoke-direct {v0}, Lk8/g$e$a;-><init>()V

    sput-object v0, Lk8/g$e;->a:Lk8/g$e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk8/g;)V
    .registers 2

    return-void
.end method

.method public abstract b(Lk8/q;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
