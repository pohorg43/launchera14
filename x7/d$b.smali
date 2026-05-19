.class public final Lx7/d$b;
.super Lx7/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lx7/d$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx7/d$b;

    invoke-direct {v0}, Lx7/d$b;-><init>()V

    sput-object v0, Lx7/d$b;->a:Lx7/d$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lx7/d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
