.class public final Lf6/a$d$a;
.super Li6/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf6/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/b<",
        "Lf6/a$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li6/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li6/d;Li6/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li6/j;
        }
    .end annotation

    new-instance p0, Lf6/a$d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lf6/a$d;-><init>(Li6/d;Li6/f;Lf6/a$a;)V

    return-object p0
.end method
