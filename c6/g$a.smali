.class public final Lc6/g$a;
.super Li6/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc6/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li6/b<",
        "Lc6/g;",
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

    new-instance p0, Lc6/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc6/g;-><init>(Li6/d;Li6/f;La4/c;)V

    return-object p0
.end method
