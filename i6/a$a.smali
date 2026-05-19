.class public abstract Li6/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li6/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Li6/a$a;",
        ">",
        "Ljava/lang/Object;",
        "Li6/p$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li6/d;Li6/f;)Li6/p$a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Li6/a$a;->c(Li6/d;Li6/f;)Li6/a$a;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Li6/d;Li6/f;)Li6/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/d;",
            "Li6/f;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
