.class public abstract Li6/h$b;
.super Li6/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Li6/h;",
        "BuilderType:",
        "Li6/h$b;",
        ">",
        "Li6/a$a<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field public a:Li6/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li6/a$a;-><init>()V

    sget-object v0, Li6/c;->a:Li6/c;

    iput-object v0, p0, Li6/h$b;->a:Li6/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Li6/h$b;->d()Li6/h$b;

    move-result-object p0

    return-object p0
.end method

.method public d()Li6/h$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is supposed to be overridden by subclasses."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract e(Li6/h;)Li6/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method
