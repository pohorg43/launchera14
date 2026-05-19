.class public final Lr6/c$b;
.super Lr6/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lr6/c$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr6/c$b;

    invoke-direct {v0}, Lr6/c$b;-><init>()V

    sput-object v0, Lr6/c$b;->a:Lr6/c$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lr6/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
