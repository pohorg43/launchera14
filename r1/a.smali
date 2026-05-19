.class public Lr1/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lr1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr1/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:Lr1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/a<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Lr1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr1/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr1/a;

    invoke-direct {v0}, Lr1/a;-><init>()V

    sput-object v0, Lr1/a;->a:Lr1/a;

    new-instance v0, Lr1/a$a;

    invoke-direct {v0}, Lr1/a$a;-><init>()V

    sput-object v0, Lr1/a;->b:Lr1/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
