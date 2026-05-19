.class public final Lx6/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx6/k;


# static fields
.field public static final b:Lx6/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/d;

    invoke-direct {v0}, Lx6/d;-><init>()V

    sput-object v0, Lx6/d;->b:Lx6/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lock()V
    .registers 1

    return-void
.end method

.method public unlock()V
    .registers 1

    return-void
.end method
