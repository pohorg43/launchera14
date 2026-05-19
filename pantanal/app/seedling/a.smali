.class public final synthetic Lpantanal/app/seedling/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpantanal/app/seedling/SeedlingEngine;


# direct methods
.method public synthetic constructor <init>(Lpantanal/app/seedling/SeedlingEngine;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/a;->a:Lpantanal/app/seedling/SeedlingEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/a;->a:Lpantanal/app/seedling/SeedlingEngine;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingEngine$delayNotifyTask$2;->a(Lpantanal/app/seedling/SeedlingEngine;)V

    return-void
.end method
